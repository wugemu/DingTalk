.class public Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;
.super Lcom/alibaba/alimei/sdk/model/AddressModel;
.source "MailContactSearchModel.java"


# static fields
.field public static final TYPE_EMAIL:I = 0x0

.field public static final TYPE_EMAIL_GROUP:I = 0x1


# instance fields
.field public department:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>()V

    return-void
.end method
