.class final Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView$a;
.super Ljava/lang/Object;
.source "StickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/Integer;

.field b:Lhsn;

.field c:Lhsu;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Lhsn;Lhsu;)V
    .locals 0
    .param p1, "integer"    # Ljava/lang/Integer;
    .param p2, "textAction"    # Lhsn;
    .param p3, "item"    # Lhsu;

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView$a;->a:Ljava/lang/Integer;

    .line 399
    iput-object p2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView$a;->b:Lhsn;

    .line 400
    iput-object p3, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView$a;->c:Lhsu;

    .line 401
    return-void
.end method
