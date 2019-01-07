.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$7;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(Landroid/app/Activity;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;JI)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .prologue
    .line 4819
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$7;->c:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    iput-wide p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$7;->a:J

    iput p4, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4822
    const-string/jumbo v0, "user_id"

    iget-wide v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$7;->a:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4823
    const-string/jumbo v0, "fr_source"

    iget v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$7;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4824
    return-object p1
.end method
