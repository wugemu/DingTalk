.class public final Ldbk;
.super Ldbj;
.source "UserTaoGoodsCardFromViewHolder.java"


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldbj;-><init>(Z)V

    .line 22
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 39
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lctk$g;->chatting_item_from:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lctk$g;->chatting_item_from_tao_goods:I

    return v0
.end method

.method protected final c(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 35
    return-void
.end method
