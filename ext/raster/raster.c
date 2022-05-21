#include <ruby.h>
#include <ruby/version.h>

static VALUE rb_test_method(VALUE self) { return Qnil; }

static VALUE rb_cRaster;

void Init_raster(void)
{
    rb_cRaster = rb_define_class("Raster", rb_cObject);

    rb_define_method(rb_cRaster, "test_", rb_test_method, 0);
}
