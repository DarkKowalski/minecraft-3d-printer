#include <ruby.h>
#include <ruby/version.h>

static VALUE rb_test_method(VALUE self) { return Qnil; }

static VALUE rb_cTriangle;

void Init_triangle(void)
{
    rb_cTriangle = rb_define_class("Triangle", rb_cObject);

    rb_define_method(rb_cTriangle, "test_", rb_test_method, 0);
}
