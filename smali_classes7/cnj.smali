.class public final Lcnj;
.super Lcnk;
.source "CellItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcnk;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcnj;->h:Z

    .line 54
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcnj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 111
    iput p1, p0, Lcnj;->e:I

    .line 112
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;)V
    .locals 0
    .param p1, "indicator"    # Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;

    .prologue
    .line 178
    iput-object p1, p0, Lcnj;->i:Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;

    .line 179
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcnj;->a:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcnj;->g:Z

    .line 189
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcnj;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 121
    iput p1, p0, Lcnj;->f:I

    .line 122
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcnj;->b:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 198
    iput-boolean p1, p0, Lcnj;->h:Z

    .line 199
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcnj;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .param p1, "tips"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcnj;->c:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcnj;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcnj;->d:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcnj;->e:I

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcnj;->f:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final i()Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcnj;->i:Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcnj;->g:Z

    return v0
.end method
