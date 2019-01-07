.class public Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;
.super Ljava/lang/Object;
.source "AdsAlertModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel$AdsAlertAction;
    }
.end annotation


# static fields
.field public static final TYPE_ORG_ADMIN_CSPACE_INTRODUCTION:I = 0xb

.field public static final TYPE_ORG_EMPLOEE_CSPACE_INTRODUCTION:I = 0xc

.field public static final TYPE_PERSONAL_CSPACE_INTRODUCTION:I = 0xa

.field private static final serialVersionUID:J = -0x1817b354d6b00886L


# instance fields
.field public actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel$AdsAlertAction;",
            ">;"
        }
    .end annotation
.end field

.field public content:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/AdsAlertModel;->tag:Ljava/lang/String;

    .line 27
    return-void
.end method
