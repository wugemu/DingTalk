.class public Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;
.super Ljava/lang/Object;
.source "NavConversationParam.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x785479307cce57b5L


# instance fields
.field private cid:Ljava/lang/String;

.field private forceUpdateTag:Z

.field private isBurnChat:Z

.field private tag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static synthetic access$002(Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->cid:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->isBurnChat:Z

    return p1
.end method

.method public static synthetic access$202(Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->tag:I

    return p1
.end method

.method public static synthetic access$302(Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->forceUpdateTag:Z

    return p1
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->tag:I

    return v0
.end method

.method public isBurnChat()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->isBurnChat:Z

    return v0
.end method

.method public isForceUpdateTag()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;->forceUpdateTag:Z

    return v0
.end method
