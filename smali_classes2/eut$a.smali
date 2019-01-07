.class final Leut$a;
.super Ljava/lang/Object;
.source "TeleConfRecordDetailGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field b:Landroid/widget/TextView;

.field final synthetic c:Leut;


# direct methods
.method private constructor <init>(Leut;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Leut$a;->c:Leut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leut;B)V
    .locals 0
    .param p1, "x0"    # Leut;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Leut$a;-><init>(Leut;)V

    return-void
.end method
