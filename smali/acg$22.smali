.class final Lacg$22;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->b(Landroid/content/Context;JLjava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcma;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcma;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lacg$22;->a:Landroid/content/Context;

    iput-object p2, p0, Lacg$22;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 314
    .line 1317
    iget-object v0, p0, Lacg$22;->a:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lacg$22;->b:Lcma;

    invoke-static {v0, v1, v2}, Lacg;->a(Landroid/content/Context;ILcma;)V

    .line 314
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 326
    const-string/jumbo v0, "MailNavigator"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lacg$22;->a:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lacg$22;->b:Lcma;

    invoke-static {v0, v1, v2}, Lacg;->a(Landroid/content/Context;ILcma;)V

    .line 328
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 322
    return-void
.end method
