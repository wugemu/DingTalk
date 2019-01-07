.class public final Lbby;
.super Ljava/lang/Object;
.source "CommentDataCenter.java"


# instance fields
.field a:Lbca;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lbca;

    invoke-direct {v0}, Lbca;-><init>()V

    iput-object v0, p0, Lbby;->a:Lbca;

    .line 27
    return-void
.end method
