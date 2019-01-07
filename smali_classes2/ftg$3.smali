.class public final Lftg$3;
.super Ljava/lang/Object;
.source "NameCardSharePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lftg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lftg;


# direct methods
.method public constructor <init>(Lftg;Landroid/graphics/Bitmap;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lftg;

    .prologue
    .line 96
    iput-object p1, p0, Lftg$3;->c:Lftg;

    iput-object p2, p0, Lftg$3;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lftg$3;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 99
    iget-object v1, p0, Lftg$3;->a:Landroid/graphics/Bitmap;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcnx;->a(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/graphics/Bitmap$CompressFormat;Z)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "savedPath":Ljava/lang/String;
    iget-object v1, p0, Lftg$3;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lftg$3$1;

    invoke-direct {v2, p0, v0}, Lftg$3$1;-><init>(Lftg$3;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method
