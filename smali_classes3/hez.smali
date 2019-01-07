.class public final Lhez;
.super Lhes;
.source "MiniAppListSearchHeaderViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhes",
        "<",
        "Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lhes;-><init>(Landroid/view/View;)V

    .line 26
    return-void
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lhdn$i;->activity_miniapp_list_search_header_layout:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 35
    sget v0, Lhdn$h;->search_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    iput-object v0, p0, Lhez;->e:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    .line 36
    iget-object v0, p0, Lhez;->e:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    sget v1, Lhdn$k;->dt_miniapp_search_hint:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->setHint(I)V

    .line 37
    iget-object v0, p0, Lhez;->e:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    new-instance v1, Lhez$1;

    invoke-direct {v1, p0}, Lhez$1;-><init>(Lhez;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    return-void
.end method
