.class public final Lafa$1;
.super Ljava/lang/Object;
.source "MailListBannerHelper.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lblc",
        "<",
        "Lblg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lafa;


# direct methods
.method public constructor <init>(Lafa;)V
    .locals 0
    .param p1, "this$0"    # Lafa;

    .prologue
    .line 58
    iput-object p1, p0, Lafa$1;->a:Lafa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 58
    check-cast p1, Lblg;

    .line 1061
    iget-object v0, p0, Lafa$1;->a:Lafa;

    iget-object v1, p0, Lafa$1;->a:Lafa;

    invoke-static {v1, p1}, Lafa;->a(Lafa;Lblg;)Lafl;

    move-result-object v1

    invoke-static {v0, v1}, Lafa;->a(Lafa;Lafl;)V

    .line 58
    return-void
.end method
