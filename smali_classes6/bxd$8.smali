.class final Lbxd$8;
.super Lhzy;
.source "LvRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbxd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Lbuo;",
        "Lbxg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 340
    .local p1, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lbxg;>;"
    invoke-direct {p0, p1}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 340
    check-cast p1, Lbuo;

    .line 2011
    new-instance v0, Lbxg;

    invoke-direct {v0}, Lbxg;-><init>()V

    .line 340
    return-object v0
.end method
