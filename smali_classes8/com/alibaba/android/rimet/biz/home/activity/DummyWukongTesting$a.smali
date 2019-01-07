.class final Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$a;
.super Ljava/lang/Object;
.source "DummyWukongTesting.java"

# interfaces
.implements Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$a;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "model"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;

    invoke-static {v0, v1, v1, p2}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->a(Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;IZLjava/lang/String;)V

    .line 123
    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "info"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$a;->a:Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->a(Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;IZLjava/lang/String;)V

    .line 128
    return-void
.end method
