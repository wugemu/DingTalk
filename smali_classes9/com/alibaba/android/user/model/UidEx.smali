.class public Lcom/alibaba/android/user/model/UidEx;
.super Ljava/lang/Object;
.source "UidEx.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xcb15e6f84e8b891L


# instance fields
.field public tag:J

.field public uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/user/model/UidEx;)V
    .locals 2
    .param p1, "another"    # Lcom/alibaba/android/user/model/UidEx;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iget-wide v0, p1, Lcom/alibaba/android/user/model/UidEx;->uid:J

    iput-wide v0, p0, Lcom/alibaba/android/user/model/UidEx;->uid:J

    .line 24
    iget-wide v0, p1, Lcom/alibaba/android/user/model/UidEx;->tag:J

    iput-wide v0, p0, Lcom/alibaba/android/user/model/UidEx;->tag:J

    .line 25
    return-void
.end method
