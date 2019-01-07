.class public Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;
.super Ljava/lang/Object;
.source "SearchExtra2OrgModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5020927296b7473cL


# instance fields
.field public empStatus:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public explain:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mobile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public searchCallbackMode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public searchCredibility:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string/jumbo v0, "fuzzy"

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchExtra2OrgModel;->searchCallbackMode:Ljava/lang/String;

    return-void
.end method
