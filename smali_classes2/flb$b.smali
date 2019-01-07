.class public final Lflb$b;
.super Ljava/lang/Object;
.source "CreateOrgV4Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflb;
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
    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput-object p1, p0, Lflb$b;->a:Ljava/lang/Object;

    .line 524
    const/4 v0, 0x3

    iput v0, p0, Lflb$b;->b:I

    .line 525
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    iput-object p1, p0, Lflb$b;->a:Ljava/lang/Object;

    .line 519
    iput p2, p0, Lflb$b;->b:I

    .line 520
    return-void
.end method
