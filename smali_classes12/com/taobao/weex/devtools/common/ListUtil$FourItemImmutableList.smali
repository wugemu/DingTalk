.class final Lcom/taobao/weex/devtools/common/ListUtil$FourItemImmutableList;
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
    name = "FourItemImmutableList"
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
.field private final mItem0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final mItem1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final mItem2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final mItem3:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;TE;TE;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lcom/taobao/weex/devtools/common/ListUtil$FourItemImmutableList;, "Lcom/taobao/weex/devtools/common/ListUtil$FourItemImmutableList<TE;>;"
    .local p1, "item0":Ljava/lang/Object;, "TE;"
    .local p2, "item1":Ljava/lang/Object;, "TE;"
    .local p3, "item2":Ljava/lang/Object;, "TE;"
    .local p4, "item3":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/taobao/weex/devtools/common/ListUtil$FourItemImmutableList;->mItem0:Ljava/lang/Object;

    .line 187
    iput-object p2, p0, Lcom/taobao/weex/devtools/common/ListUtil$FourItemImmutableList;->mItem1:Ljava/lang/Object;

    .line 188
    iput-object p3, p0, Lcom/taobao/weex/devtools/common/ListUtil$FourItemImmutableList;->mItem2:Ljava/lang/Object;

    .line 189
    iput-object p4, p0, Lcom/taobao/weex/devtools/common/ListUtil$FourItemImmutableList;->mItem3:Ljava/lang/Object;

    .line 190
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
    .line 194
    .local p0, "this":Lcom/taobao/weex/devtools/common/ListUtil$FourItemImmutableList;, "Lcom/taobao/weex/devtools/common/ListUtil$FourItemImmutableList<TE;>;"
    packed-switch p1, :pswitch_data_0

    .line 204
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 196
    :pswitch_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/common/ListUtil$FourItemImmutableList;->mItem0:Ljava/lang/Object;

    .line 202
    :goto_0
    return-object v0

    .line 198
    :pswitch_1
    iget-object v0, p0, Lcom/taobao/weex/devtools/common/ListUtil$FourItemImmutableList;->mItem1:Ljava/lang/Object;

    goto :goto_0

    .line 200
    :pswitch_2
    iget-object v0, p0, Lcom/taobao/weex/devtools/common/ListUtil$FourItemImmutableList;->mItem2:Ljava/lang/Object;

    goto :goto_0

    .line 202
    :pswitch_3
    iget-object v0, p0, Lcom/taobao/weex/devtools/common/ListUtil$FourItemImmutableList;->mItem3:Ljava/lang/Object;

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 210
    .local p0, "this":Lcom/taobao/weex/devtools/common/ListUtil$FourItemImmutableList;, "Lcom/taobao/weex/devtools/common/ListUtil$FourItemImmutableList<TE;>;"
    const/4 v0, 0x4

    return v0
.end method
