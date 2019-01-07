.class public Lcom/alibaba/android/user/model/PositionData;
.super Ljava/lang/Object;
.source "PositionData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public checked:Z

.field public code:Ljava/lang/String;

.field public custom:Z

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alibaba/android/user/model/PositionData;->name:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    .line 19
    return-void
.end method
