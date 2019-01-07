.class final Lian$6;
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
        "Lcom/alibaba/wukong/idl/im/models/CategoryModel;",
        "Lcom/alibaba/wukong/im/category/CategoryObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lian;


# direct methods
.method constructor <init>(Lian;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lian;

    .prologue
    .line 175
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    iput-object p1, p0, Lian$6;->a:Lian;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 175
    check-cast p1, Lcom/alibaba/wukong/idl/im/models/CategoryModel;

    .line 1178
    if-nez p1, :cond_0

    .line 1179
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1181
    :cond_0
    invoke-static {p1}, Lcom/alibaba/wukong/im/category/CategoryObject;->fromIDL(Lcom/alibaba/wukong/idl/im/models/CategoryModel;)Lcom/alibaba/wukong/im/category/CategoryObject;

    move-result-object v0

    goto :goto_0
.end method
