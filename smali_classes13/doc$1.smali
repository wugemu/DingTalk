.class final Ldoc$1;
.super Ljava/lang/Object;
.source "ImageSpanAdapter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/mdrender/view/ImageViewDelegate$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoc;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldoc;


# direct methods
.method constructor <init>(Ldoc;)V
    .locals 0
    .param p1, "this$0"    # Ldoc;

    .prologue
    .line 92
    iput-object p1, p0, Ldoc$1;->a:Ldoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 97
    iget-object v0, p0, Ldoc$1;->a:Ldoc;

    invoke-static {v0}, Ldoc;->a(Ldoc;)V

    .line 98
    iget-object v0, p0, Ldoc$1;->a:Ldoc;

    invoke-static {v0, p1}, Ldoc;->a(Ldoc;Landroid/graphics/drawable/Drawable;)V

    .line 99
    return-void
.end method
