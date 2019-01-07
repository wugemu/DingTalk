.class public Lcom/alibaba/android/dingtalkim/mgr/emotion/defaultemotion/DynamicDefaultEmotion;
.super Ljava/lang/Object;
.source "DynamicDefaultEmotion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6e2bdc220359b8cbL


# instance fields
.field public emotionId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public showType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
