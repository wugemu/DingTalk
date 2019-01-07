.class final Leuv$a;
.super Ljava/lang/Object;
.source "TeleMemberRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leuv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/teleconf/widget/TeleRecordTextView;

.field final synthetic b:Leuv;


# direct methods
.method private constructor <init>(Leuv;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Leuv$a;->b:Leuv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leuv;B)V
    .locals 0
    .param p1, "x0"    # Leuv;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Leuv$a;-><init>(Leuv;)V

    return-void
.end method
