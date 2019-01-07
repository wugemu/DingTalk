.class final Leeb$b;
.super Ljava/lang/Object;
.source "AttendanceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/view/View;

.field e:Landroid/widget/CheckBox;

.field f:Landroid/view/View;

.field final synthetic g:Leeb;


# direct methods
.method private constructor <init>(Leeb;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Leeb$b;->g:Leeb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leeb;B)V
    .locals 0
    .param p1, "x0"    # Leeb;

    .prologue
    .line 255
    invoke-direct {p0, p1}, Leeb$b;-><init>(Leeb;)V

    return-void
.end method
