.class public final Lfla$b;
.super Ljava/lang/Object;
.source "CreateOrgV3Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfla;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)V
    .locals 1
    .param p1, "orgMemberObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput-object p1, p0, Lfla$b;->a:Ljava/lang/Object;

    .line 463
    const/4 v0, 0x1

    iput v0, p0, Lfla$b;->b:I

    .line 464
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput-object p1, p0, Lfla$b;->a:Ljava/lang/Object;

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lfla$b;->b:I

    .line 454
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p1, p0, Lfla$b;->a:Ljava/lang/Object;

    .line 458
    const/4 v0, 0x2

    iput v0, p0, Lfla$b;->b:I

    .line 459
    return-void
.end method
