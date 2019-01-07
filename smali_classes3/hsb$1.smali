.class final Lhsb$1;
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
    .line 120
    iput-object p1, p0, Lhsb$1;->b:Lhsb;

    iput-object p2, p0, Lhsb$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    iget-object v0, p0, Lhsb$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lhrf;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/high16 v0, 0x18000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    :cond_0
    return-object p1
.end method
