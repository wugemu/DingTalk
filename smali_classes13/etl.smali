.class public final Letl;
.super Letj;
.source "DingSearchResultSenderHolder.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lemw;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "adapter"    # Lemw;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Letj;-><init>(Landroid/app/Activity;Lemw;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lemt$f;->item_ding_search_sender_result:I

    return v0
.end method
