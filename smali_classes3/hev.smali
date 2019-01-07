.class public final Lhev;
.super Lhes;
.source "MiniAppListGroupViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhes",
        "<",
        "Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lhes;-><init>(Landroid/view/View;)V

    .line 16
    return-void
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lhdn$i;->activity_miniapp_list_group_layout:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 26
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    return-void
.end method
