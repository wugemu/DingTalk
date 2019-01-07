.class final Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$4;
.super Ljava/lang/Object;
.source "SinaWeiboShareUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$4;->b:Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;

    iput-object p2, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$4;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 268
    invoke-static {}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getInstance()Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$4;->b:Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;

    invoke-static {v1}, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->a(Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getSinaExecutor(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$4;->a:Landroid/graphics/Bitmap;

    new-instance v2, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$4$1;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$4$1;-><init>(Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->doShareImage(Landroid/graphics/Bitmap;Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;)V

    .line 290
    return-void
.end method
