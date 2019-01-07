.class final Landroid/support/customtabs/PostMessageService$1;
.super Ln$a;
.source "PostMessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/PostMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/customtabs/PostMessageService;


# direct methods
.method constructor <init>(Landroid/support/customtabs/PostMessageService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/customtabs/PostMessageService;

    .prologue
    .line 29
    iput-object p1, p0, Landroid/support/customtabs/PostMessageService$1;->a:Landroid/support/customtabs/PostMessageService;

    invoke-direct {p0}, Ln$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ll;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "callback"    # Ll;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-interface {p1, p2}, Ll;->a(Landroid/os/Bundle;)V

    .line 35
    return-void
.end method

.method public final a(Ll;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "callback"    # Ll;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-interface {p1, p2, p3}, Ll;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 41
    return-void
.end method
