.class final Lbxb$2;
.super Ljava/lang/Object;
.source "VideoListeners.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxb;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbxb;


# direct methods
.method constructor <init>(Lbxb;)V
    .locals 0
    .param p1, "this$0"    # Lbxb;

    .prologue
    .line 120
    iput-object p1, p0, Lbxb$2;->a:Lbxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 123
    const-string/jumbo v0, "User agree play live with mobile network"

    .line 1013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lbxb$2;->a:Lbxb;

    .line 1043
    const/4 v1, 0x1

    iput-boolean v1, v0, Lbxb;->j:Z

    .line 125
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->c()V

    .line 126
    return-void
.end method
