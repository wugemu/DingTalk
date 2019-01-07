.class final Lcom/alibaba/android/rimet/RimetDDContext$45$4$1;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/RimetDDContext$45$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/rimet/RimetDDContext$45$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext$45$4;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/rimet/RimetDDContext$45$4;

    .prologue
    .line 935
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$4$1;->b:Lcom/alibaba/android/rimet/RimetDDContext$45$4;

    iput-object p2, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$4$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 938
    const-string/jumbo v0, "validate_pwd"

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$4$1;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 939
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$45$4$1;->b:Lcom/alibaba/android/rimet/RimetDDContext$45$4;

    iget-object v1, v1, Lcom/alibaba/android/rimet/RimetDDContext$45$4;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 940
    return-object p1
.end method
