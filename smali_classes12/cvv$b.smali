.class public final Lcvv$b;
.super Ljava/lang/Object;
.source "GroupAdminAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcvv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Z

.field f:J

.field final synthetic g:Lcvv;


# direct methods
.method public constructor <init>(Lcvv;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcvv;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    iput-object p1, p0, Lcvv$b;->g:Lcvv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p2, p0, Lcvv$b;->a:Landroid/content/Context;

    .line 159
    return-void
.end method
