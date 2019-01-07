.class final Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;
.super Ljava/lang/Object;
.source "SearchMoreEntryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/widget/SearchMoreEntryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/search/SearchGroupType;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/search/SearchGroupType;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/alibaba/android/search/SearchGroupType;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;->a:Lcom/alibaba/android/search/SearchGroupType;

    .line 136
    iput-object p2, p0, Lcom/alibaba/android/search/widget/SearchMoreEntryView$a;->b:Ljava/lang/String;

    .line 137
    return-void
.end method
