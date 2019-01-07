.class final Lian$3;
.super Lhzy;
.source "CategoryRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lian;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lian;


# direct methods
.method constructor <init>(Lian;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lian;

    .prologue
    .line 97
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lian$3;->a:Lian;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 97
    check-cast p1, Ljava/util/List;

    return-object p1
.end method
