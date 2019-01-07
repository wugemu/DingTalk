.class final Lhsb$2;
.super Ljava/lang/Object;
.source "SchemeHelper.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhsb;->a(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lhsb;


# direct methods
.method constructor <init>(Lhsb;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lhsb;

    .prologue
    .line 132
    iput-object p1, p0, Lhsb$2;->b:Lhsb;

    iput-object p2, p0, Lhsb$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 137
    const-string/jumbo v0, "android.intent.action.DIAL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    iget-object v0, p0, Lhsb$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lhrf;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    :cond_0
    return-object p1
.end method
