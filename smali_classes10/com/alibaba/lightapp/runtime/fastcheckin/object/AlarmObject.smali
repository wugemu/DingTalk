.class public Lcom/alibaba/lightapp/runtime/fastcheckin/object/AlarmObject;
.super Ljava/lang/Object;
.source "AlarmObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3c1e7b553a3fe5aaL


# instance fields
.field public mCorpId:Ljava/lang/String;

.field public mPlanId:J

.field public mWorkDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "workDate"    # Ljava/lang/String;
    .param p3, "planId"    # J

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/AlarmObject;->mCorpId:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/AlarmObject;->mWorkDate:Ljava/lang/String;

    .line 22
    iput-wide p3, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/object/AlarmObject;->mPlanId:J

    .line 23
    return-void
.end method
