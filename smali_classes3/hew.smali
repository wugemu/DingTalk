.class public final Lhew;
.super Lhes;
.source "MiniAppListInvalidViewHolder.java"


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
    .line 29
    invoke-direct {p0, p1}, Lhes;-><init>(Landroid/view/View;)V

    .line 30
    return-void
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lhdn$i;->activity_miniapp_list_invalid_layout:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 39
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method
