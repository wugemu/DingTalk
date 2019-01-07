.class final Lcom/alibaba/android/dingtalkbase/BaseQrFragment$1;
.super Ljava/lang/Object;
.source "BaseQrFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/BaseQrFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/BaseQrFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/BaseQrFragment;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/BaseQrFragment;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment$1;->b:Lcom/alibaba/android/dingtalkbase/BaseQrFragment;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 135
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment$1;->a:Landroid/graphics/Bitmap;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcnx;->a(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/graphics/Bitmap$CompressFormat;Z)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "savedPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkbase/BaseQrFragment$1$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/dingtalkbase/BaseQrFragment$1$1;-><init>(Lcom/alibaba/android/dingtalkbase/BaseQrFragment$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 148
    return-void
.end method
