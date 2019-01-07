.class public Lcom/alibaba/android/dingtalkim/base/model/AddGroupBizObject;
.super Ljava/lang/Object;
.source "AddGroupBizObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEST_QQ:I = 0x2

.field public static final DEST_WECHAT:I = 0x1

.field public static final TYPE_ADD_BY_INVITATION:I = 0x1


# instance fields
.field public dest:I

.field public inviterUid:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
