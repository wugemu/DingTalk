.class final Lfbm$1;
.super Ljava/lang/Object;
.source "OrgUserNameCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbm;->a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfrw;


# direct methods
.method constructor <init>(Lfrw;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lfbm$1;->a:Lfrw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 85
    invoke-static {}, Lfbm;->a()Lfmv;

    move-result-object v0

    iget-object v1, p0, Lfbm$1;->a:Lfrw;

    invoke-interface {v0, v1}, Lfmv;->a(Lfrw;)I

    .line 86
    return-void
.end method