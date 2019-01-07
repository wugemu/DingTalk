.class final Lidu$3;
.super Lhzy;
.source "UserRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lidu;->a(Lcom/alibaba/wukong/idl/user/models/ProfileModel;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lidu;


# direct methods
.method constructor <init>(Lidu;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lidu;

    .prologue
    .line 155
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    iput-object p1, p0, Lidu$3;->a:Lidu;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method
