.class final Lfnr$1;
.super Ljava/lang/Object;
.source "OrgExternalNameCenter.java"

# interfaces
.implements Lfnr$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfnr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfnr;


# direct methods
.method constructor <init>(Lfnr;)V
    .locals 0
    .param p1, "this$0"    # Lfnr;

    .prologue
    .line 44
    iput-object p1, p0, Lfnr$1;->a:Lfnr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lfnr$1;->a:Lfnr;

    .line 1028
    iget-object v0, v0, Lfnr;->b:Lfns$a;

    .line 47
    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lfnr$1;->a:Lfnr;

    .line 2028
    iget-object v0, v0, Lfnr;->b:Lfns$a;

    .line 48
    invoke-interface {v0, p1}, Lfns$a;->a(Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method
