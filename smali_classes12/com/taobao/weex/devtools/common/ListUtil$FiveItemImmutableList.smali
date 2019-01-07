.class final Lcom/taobao/weex/devtools/common/ListUtil$FiveItemImmutableList;
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
    name = "FiveItemImmutableList"
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

.field private final mItem4:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;TE;TE;TE;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lcom/taobao/weex/devtools/common/ListUtil$FiveItemImmutableList;, "Lcom/taobao/weex/devtools/common/ListUtil$FiveItemImmutableList<TE;>;"
    .local p1, "item0":Ljava/lang/Object;, "TE;"
    .local p2, "item1":Ljava/lang/Object;, "TE;"
    .local p3, "item2":Ljava/lang/Object;, "TE;"
    .local p4, "item3":Ljava/lang/Object;, "TE;"
    .local p5, "item4":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/taobao/weex/devtools/common/ListUtil$FiveItemImmutableList;->mItem0:Ljava/lang/Object;

    .line 224
    iput-object p2, p0, Lcom/taobao/weex/devtools/common/ListUtil$FiveItemImmutableList;->mItem1:Ljava/lang/Object;

    .line 225
    iput-object p3, p0, Lcom/taobao/weex/devtools/common/ListUtil$FiveItemImmutableList;->mItem2:Ljava/lang/Object;

    .line 226
    iput-object p4, p0, Lcom/taobao/weex/devtools/common/ListUtil$FiveItemImmutableList;->mItem3:Ljava/lang/Object;

    .line 227
    iput-object p5, p0, Lcom/taobao/weex/devtools/common/ListUtil$FiveItemImmutableList;->mItem4:Ljava/lang/Object;

    .line 228
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
    .line 232
    .local p0, "this":Lcom/taobao/weex/devtools/common/ListUtil$FiveItemImmutableList;, "Lcom/taobao/weex/devtools/common/ListUtil$FiveItemImmutableList<TE;>;"
    packed-switch p1, :pswitch_data_0

    .line 244
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 234
    :pswitch_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/common/ListUtil$FiveItemImmutableList;->mItem0:Ljava/lang/Object;

    .line 242
    :goto_0
    return-object v0

    .line 236
    :pswitch_1
    iget-object v0, p0, Lcom/taobao/weex/devtools/common/ListUtil$FiveItemImmutableList;->mItem1:Ljava/lang/Object;

    goto :goto_0

    .line 238
    :pswitch_2
    iget-object v0, p0, Lcom/taobao/weex/devtools/common/ListUtil$FiveItemImmutableList;->mItem2:Ljava/lang/Object;

    goto :goto_0

    .line 240
    :pswitch_3
    iget-object v0, p0, Lcom/taobao/weex/devtools/common/ListUtil$FiveItemImmutableList;->mItem3:Ljava/lang/Object;

    goto :goto_0

    .line 242
    :pswitch_4
    iget-object v0, p0, Lcom/taobao/weex/devtools/common/ListUtil$FiveItemImmutableList;->mItem4:Ljava/lang/Object;

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 250
    .local p0, "this":Lcom/taobao/weex/devtools/common/ListUtil$FiveItemImmutableList;, "Lcom/taobao/weex/devtools/common/ListUtil$FiveItemImmutableList<TE;>;"
    const/4 v0, 0x5

    return v0
.end method
