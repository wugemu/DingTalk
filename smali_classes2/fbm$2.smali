.class final Lfbm$2;
.super Ljava/lang/Object;
.source "OrgUserNameCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbm;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lfbm$2;->a:Ljava/util/List;

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
    .line 99
    invoke-static {}, Lfbm;->a()Lfmv;

    move-result-object v0

    iget-object v1, p0, Lfbm$2;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lfmv;->a(Ljava/util/List;)I

    .line 100
    return-void
.end method
