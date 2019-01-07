.class final Liaw$19$1;
.super Lhzy;
.source "ConversationServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liaw$19;
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
        "Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Liaw$19;


# direct methods
.method constructor <init>(Liaw$19;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$1"    # Liaw$19;

    .prologue
    .line 1431
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;>;>;"
    iput-object p1, p0, Liaw$19$1;->a:Liaw$19;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1431
    check-cast p1, Ljava/util/List;

    return-object p1
.end method
