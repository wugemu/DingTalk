.class final Lacg$24$2$1;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg$24$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacg$24$2;


# direct methods
.method constructor <init>(Lacg$24$2;)V
    .locals 0
    .param p1, "this$1"    # Lacg$24$2;

    .prologue
    .line 2249
    iput-object p1, p0, Lacg$24$2$1;->a:Lacg$24$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 2252
    iget-object v0, p0, Lacg$24$2$1;->a:Lacg$24$2;

    iget-object v0, v0, Lacg$24$2;->b:Lacg$24;

    iget-object v0, v0, Lacg$24;->e:Landroid/content/Context;

    sget v1, Laxo$i;->conv_mail_list_get_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 2253
    return-void
.end method
