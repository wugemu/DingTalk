.class public final Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$a;
.super Ljava/lang/Object;
.source "DingSubFilterDropDownAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isSelected"    # Z

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$a;->a:Ljava/lang/String;

    .line 20
    iput-boolean p2, p0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$a;->b:Z

    .line 21
    return-void
.end method
