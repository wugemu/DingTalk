.class public Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;
.super Ljava/lang/Object;
.source "ConversationSearchObjectList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x222baa49eab71faeL


# instance fields
.field public conversationList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public logMap:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nextCursor:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public totalCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
