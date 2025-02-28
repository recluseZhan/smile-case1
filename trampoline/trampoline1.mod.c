#include <linux/build-salt.h>
#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

BUILD_SALT;

MODULE_INFO(vermagic, VERMAGIC_STRING);
MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__section(.gnu.linkonce.this_module) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

#ifdef CONFIG_RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif

static const struct modversion_info ____versions[]
__used __section(__versions) = {
	{ 0xc79d2779, "module_layout" },
	{ 0x6bc3fbc0, "__unregister_chrdev" },
	{ 0x8537dfba, "kmalloc_caches" },
	{ 0x79aa04a2, "get_random_bytes" },
	{ 0x2db10423, "__register_chrdev" },
	{ 0x344fd44f, "pv_ops" },
	{ 0x4e0ecf27, "current_task" },
	{ 0xc5850110, "printk" },
	{ 0x4c9d28b0, "phys_base" },
	{ 0xa7eedcc4, "call_usermodehelper" },
	{ 0x7cd8d75e, "page_offset_base" },
	{ 0xad09f791, "init_task" },
	{ 0xdecd0b29, "__stack_chk_fail" },
	{ 0xbdfb6dbb, "__fentry__" },
	{ 0x26c2e0b5, "kmem_cache_alloc_trace" },
	{ 0x37a0cba, "kfree" },
};

MODULE_INFO(depends, "");


MODULE_INFO(srcversion, "16A33876D4A7A17EB64AC5D");
