.class final Ldde$3;
.super Ljava/lang/Object;
.source "CategoryUtil.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldde;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/category/CategoryObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/category/CategoryObject;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Ldde$3;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    const-string/jumbo v0, "intent_key_category_model"

    iget-object v1, p0, Ldde$3;->a:Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    return-object p1
.end method