.class public Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;
.super Ljava/lang/Object;
.source "Movement.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BIG_IMAGE:I = -0x64

.field public static final BLINK:I = 0x1

.field public static final KEEP_STILL:I = 0xb

.field public static final OPEN_MOUTH:I = 0x2

.field public static final RAISE_HEAD_DOWN:I = 0xa

.field public static final SHAKE_HEAD:I = 0x3

.field private static final serialVersionUID:J = -0x4e7be3e04afb692L


# instance fields
.field private mActionType:I

.field private mImage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionType()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;->mActionType:I

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;->mImage:Ljava/lang/String;

    return-object v0
.end method

.method public setActionType(I)V
    .locals 0
    .param p1, "actionType"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;->mActionType:I

    .line 32
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;->mImage:Ljava/lang/String;

    .line 40
    return-void
.end method
