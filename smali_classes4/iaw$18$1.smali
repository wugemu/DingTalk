.class final Liaw$18$1;
.super Lhzy;
.source "ConversationServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liaw$18;
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
.field final synthetic a:Liaw$18;


# direct methods
.method constructor <init>(Liaw$18;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$1"    # Liaw$18;

    .prologue
    .line 1404
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    iput-object p1, p0, Liaw$18$1;->a:Liaw$18;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 1404
    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method
