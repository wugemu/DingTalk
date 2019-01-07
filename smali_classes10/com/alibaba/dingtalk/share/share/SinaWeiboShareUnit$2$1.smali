.class final Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2$1;
.super Ljava/lang/Object;
.source "SinaWeiboShareUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2$1;->b:Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;

    iput-object p2, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2$1;->b:Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;

    iget-object v0, v0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;->e:Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;

    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2$1;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2$1;->b:Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;

    iget-object v2, v2, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2$1;->b:Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;

    iget-object v3, v3, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2$1;->b:Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;

    iget-object v4, v4, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit$2;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;->b(Lcom/alibaba/dingtalk/share/share/SinaWeiboShareUnit;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method
