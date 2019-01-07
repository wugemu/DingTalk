.class final Lcom/taobao/weex/devtools/common/ListUtil$OneItemImmutableList;
.super Ljava/util/AbstractList;
.source "ListUtil.java"

# interfaces
.implements Lcom/taobao/weex/devtools/common/ListUtil$ImmutableList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/common/ListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OneItemImmutableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Lcom/taobao/weex/devtools/common/ListUtil$ImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final mItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/taobao/weex/devtools/common/ListUtil$OneItemImmutableList;, "Lcom/taobao/weex/devtools/common/ListUtil$OneItemImmutableList<TE;>;"
    .local p1, "item":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/taobao/weex/devtools/common/ListUtil$OneItemImmutableList;->mItem:Ljava/lang/Object;

    .line 101
    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/taobao/weex/devtools/common/ListUtil$OneItemImmutableList;, "Lcom/taobao/weex/devtools/common/ListUtil$OneItemImmutableList<TE;>;"
    if-nez p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/taobao/weex/devtools/common/ListUtil$OneItemImmutableList;->mItem:Ljava/lang/Object;

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lcom/taobao/weex/devtools/common/ListUtil$OneItemImmutableList;, "Lcom/taobao/weex/devtools/common/ListUtil$OneItemImmutableList<TE;>;"
    const/4 v0, 0x1

    return v0
.end method
