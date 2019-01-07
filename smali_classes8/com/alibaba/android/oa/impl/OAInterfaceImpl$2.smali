.class final Lcom/alibaba/android/oa/impl/OAInterfaceImpl$2;
.super Ljava/lang/Object;
.source "OAInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/impl/OAInterfaceImpl;->a(Landroid/content/Context;Landroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/oa/impl/OAInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/impl/OAInterfaceImpl;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/impl/OAInterfaceImpl;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$2;->c:Lcom/alibaba/android/oa/impl/OAInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$2;->a:Landroid/os/Bundle;

    iput p3, p0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$2;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 216
    iget v0, p0, Lcom/alibaba/android/oa/impl/OAInterfaceImpl$2;->b:I

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 217
    return-object p1
.end method
