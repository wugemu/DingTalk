.class public Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SelectEmojiActivity.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0xb4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;->a:[I

    return-void

    :array_0
    .array-data 4
        0x1f4ac
        0x1f637
        0x2708
        0x1f4f1
        0x1f4c5
        0x1f334
        0x1f60a
        0x1f60b
        0x1f60d
        0x1f60f
        0x1f61a
        0x1f61b
        0x1f61c
        0x1f61d
        0x1f61e
        0x1f61f
        0x1f62b
        0x1f62c
        0x1f62d
        0x1f62e
        0x1f62f
        0x1f600
        0x1f601
        0x1f602
        0x1f603
        0x1f604
        0x1f609
        0x1f610
        0x1f611
        0x1f612
        0x1f613
        0x1f614
        0x1f615
        0x1f616
        0x1f617
        0x1f618
        0x1f619
        0x1f620
        0x1f621
        0x1f622
        0x1f623
        0x1f624
        0x1f625
        0x1f626
        0x1f627
        0x1f628
        0x1f629
        0x1f630
        0x1f631
        0x1f632
        0x1f633
        0x1f635
        0x1f636
        0x1f641
        0x1f644
        0x1f910
        0x1f911
        0x1f912
        0x1f913
        0x1f914
        0x1f915
        0x1f917
        0x1f3a4
        0x1f3a7
        0x1f3ac
        0x1f3b5
        0x1f3c0
        0x1f3c1
        0x1f3c5
        0x1f3d5
        0x1f3e5
        0x1f3f8
        0x1f4a1
        0x1f4a3
        0x1f4a4
        0x1f4aa
        0x1f4ad
        0x1f4b4
        0x1f4bb
        0x1f4c8
        0x1f4ca
        0x1f4cc
        0x1f4d0
        0x1f4d4
        0x1f4f8
        0x1f5a5
        0x1f6ab
        0x1f6b2
        0x1f6cf
        0x1f30f
        0x1f31a
        0x1f31b
        0x1f31d
        0x1f31f
        0x1f36d
        0x1f37b
        0x1f41f
        0x1f44e
        0x1f45f
        0x1f46a
        0x1f47b
        0x1f47d
        0x1f47f
        0x1f48a
        0x1f48e
        0x1f48f
        0x1f50d
        0x1f52d
        0x1f56f
        0x1f58b
        0x1f64a
        0x1f64b
        0x1f64c
        0x1f64d
        0x1f64e
        0x1f64f
        0x1f68c
        0x1f91b
        0x1f91c
        0x1f91d
        0x1f94b
        0x1f315
        0x1f319
        0x1f371
        0x1f373
        0x1f379
        0x1f382
        0x1f384
        0x1f385
        0x1f388
        0x1f389
        0x1f393
        0x1f399
        0x1f424
        0x1f435
        0x1f436
        0x1f437
        0x1f440
        0x1f454
        0x1f455
        0x1f466
        0x1f467
        0x1f470
        0x1f471
        0x1f476
        0x1f478
        0x1f481
        0x1f483
        0x1f486
        0x1f488
        0x1f491
        0x1f512
        0x1f514
        0x1f515
        0x1f525
        0x1f528
        0x1f557
        0x1f645
        0x1f646
        0x1f647
        0x1f648
        0x1f684
        0x1f918
        0x1f926
        0x1f933
        0x1f947
        0x23f0
        0x26a1
        0x26bd
        0x26be
        0x26c5
        0x26ea
        0x26f1
        0x270a
        0x270c
        0x270f
        0x2601
        0x2615
        0x2709
        0x2728
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a()[I
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;->a:[I

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 208
    sget v1, Lcig$h;->layout_select_emoji_activity:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;->setContentView(I)V

    .line 209
    sget v1, Lcig$f;->emoji_grid:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 210
    .local v0, "gridView":Landroid/widget/GridView;
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 253
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 272
    return-void
.end method
