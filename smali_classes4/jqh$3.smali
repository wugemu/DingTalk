.class final Ljqh$3;
.super Ljava/lang/Object;
.source "AppLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljqh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljqh$b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

.field final synthetic e:Ljqh;


# direct methods
.method constructor <init>(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/windmill/bundle/container/core/AppInfoModel;)V
    .locals 0
    .param p1, "this$0"    # Ljqh;

    .prologue
    .line 781
    iput-object p1, p0, Ljqh$3;->e:Ljqh;

    iput-object p2, p0, Ljqh$3;->a:Ljqh$b;

    iput-object p3, p0, Ljqh$3;->b:Ljava/lang/String;

    iput-object p4, p0, Ljqh$3;->c:Ljava/lang/String;

    iput-object p5, p0, Ljqh$3;->d:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 784
    iget-object v0, p0, Ljqh$3;->a:Ljqh$b;

    iget-object v1, p0, Ljqh$3;->e:Ljqh;

    .line 1049
    iget-object v1, v1, Ljqh;->b:Landroid/content/Context;

    .line 784
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ljrg$d;->wml_default_error_title:I

    .line 785
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljqh$3;->b:Ljava/lang/String;

    iget-object v3, p0, Ljqh$3;->c:Ljava/lang/String;

    iget-object v4, p0, Ljqh$3;->b:Ljava/lang/String;

    iget-object v5, p0, Ljqh$3;->d:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    .line 784
    invoke-interface/range {v0 .. v5}, Ljqh$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/windmill/bundle/container/core/AppInfoModel;)V

    .line 786
    return-void
.end method
