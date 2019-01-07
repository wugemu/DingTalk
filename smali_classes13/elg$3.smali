.class public final Lelg$3;
.super Ljava/lang/Object;
.source "InvitationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lelg;


# direct methods
.method public constructor <init>(Lelg;)V
    .locals 0
    .param p1, "this$0"    # Lelg;

    .prologue
    .line 169
    iput-object p1, p0, Lelg$3;->a:Lelg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    iget-object v0, p0, Lelg$3;->a:Lelg;

    iget-object v1, p0, Lelg$3;->a:Lelg;

    invoke-static {v1}, Lelg;->c(Lelg;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lelg;->a(Lelg;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    return-void
.end method
